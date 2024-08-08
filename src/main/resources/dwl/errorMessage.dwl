%dw 2.0
output application/json
---
{"code": vars.httpStatus, 
"message": error.description
}