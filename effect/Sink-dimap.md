# dimap

Transforms both inputs and result of this sink using the provided
functions.

To import and use `dimap` from the "Sink" module:

```ts
import * as Sink from 'effect/Sink'

// Can be accessed like this
Sink.dimap
```

**Signature**

```ts
export declare const dimap: {
  <In0, In, Z, Z2>(options: { readonly onInput: (input: In0) => In; readonly onDone: (z: Z) => Z2 }): <R, E, L>(
    self: Sink<R, E, In, L, Z>
  ) => Sink<R, E, In0, L, Z2>
  <R, E, L, In0, In, Z, Z2>(
    self: Sink<R, E, In, L, Z>,
    options: { readonly onInput: (input: In0) => In; readonly onDone: (z: Z) => Z2 }
  ): Sink<R, E, In0, L, Z2>
}
```
