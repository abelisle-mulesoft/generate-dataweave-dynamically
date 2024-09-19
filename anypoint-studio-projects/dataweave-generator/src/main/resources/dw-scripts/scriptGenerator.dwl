%dw 2.0
import * from dw::Runtime
output text/plain
// Constants
var dwDirective = "%dw 2.0\n"
var dwHdrDelim = "---\n"
// Variables and functions related to payload data
var contentType = upper(payload.contentType)
var outputFields = payload.fields splitBy(",")
var fieldIndentation = if(contentType == "JSON") "  " else "    "
fun generateMappings(outputFields) = 
    write(
        (outputFields map (item, index) -> 
            "outputName": fieldIndentation ++ 
            item ++ ": payload." ++ trim(item) ++ 
            if(index < sizeOf(outputFields) - 1) "," else "" 
        ),
        "application/csv", {"header":false, "escape": ""}
    ) as String
---
// DataWeave Header
dwDirective ++ 
(contentType match {
  case "JSON" -> "output application/json\n"
  case "XML" -> "output application/xml\n"
  else -> fail("Invalid output.contentType - only JSON and XML are supported")
}) ++
dwHdrDelim ++
// DataWeave Body
"{\n" ++
(if(contentType == "XML") "  " ++ (payload.xmlRootElement default "") ++ ": {\n" else "") ++
generateMappings(outputFields) ++
(if(contentType == "XML") "  }\n" else "") ++
"}\n"
