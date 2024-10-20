# WithResult

The `WithResult` trait is designed to encapsulate the outcome of an
operation, distinguishing between success and failure cases. Each case is
associated with a schema that defines the structure and types of the success
or failure data.

To import and use `WithResult` from the "Serializable" module:

```ts
import * as Serializable from "@effect/schema/Serializable"
// Can be accessed like this
Serializable.WithResult
```
