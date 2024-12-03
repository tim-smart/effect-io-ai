# isFlattened

Returns `true` if the specified `Flatten` is a `Flattened`, `false` otherwise.

To import and use `isFlattened` from the "Flatten" module:

```ts
import * as Flatten from "@effect/printer/Flatten"
// Can be accessed like this
Flatten.isFlattened
```

**Signature**

```ts
export declare const isFlattened: <A>(a: Flatten<A>) => a is Flattened<A>
```
