# json

A layer that uses JSON serialization for encoding and decoding messages.
This is useful for testing and not recommended to use in production.

To import and use `json` from the "Serialization" module:

```ts
import * as Serialization from "@effect/cluster/Serialization"
// Can be accessed like this
Serialization.json
```

**Signature**

```ts
export declare const json: Layer.Layer<Serialization, never, never>
```
