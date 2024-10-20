# SerializableWithResult

The `SerializableWithResult` trait is specifically designed to model remote
procedures that require serialization of their input and output, managing
both successful and failed outcomes.

This trait combines functionality from both the `Serializable` and `WithResult`
traits to handle data serialization and the bifurcation of operation results
into success or failure categories.

To import and use `SerializableWithResult` from the "Serializable" module:

```ts
import * as Serializable from "@effect/schema/Serializable"
// Can be accessed like this
Serializable.SerializableWithResult
```
