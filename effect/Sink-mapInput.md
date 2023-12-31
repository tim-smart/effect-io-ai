# mapInput

Transforms this sink's input elements.

To import and use `mapInput` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.mapInput
```

**Signature**

```ts
export declare const mapInput: (<In0, In>(
  f: (input: In0) => In
) => <R, E, L, Z>(self: Sink<R, E, In, L, Z>) => Sink<R, E, In0, L, Z>) &
  (<R, E, L, Z, In0, In>(self: Sink<R, E, In, L, Z>, f: (input: In0) => In) => Sink<R, E, In0, L, Z>)
```
