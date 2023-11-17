# Entry

A `Entry<A>` keeps track of a request of type `A` along with a
`Ref` containing the result of the request, existentially hiding the result
type. This is used internally by the library to support data sources that
return different result types for different requests while guaranteeing that
results will be of the type requested.

To import and use `Entry` from the "Request" module:

```ts
import * as Request from "effect/Request"
// Can be accessed like this
Request.Entry
```
