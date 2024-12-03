# isAlreadyFlat

Returns `true` if the specified `Flatten` is an `AlreadyFlat`, `false` otherwise.

To import and use `isAlreadyFlat` from the "Flatten" module:

```ts
import * as Flatten from "@effect/printer/Flatten"
// Can be accessed like this
Flatten.isAlreadyFlat
```

**Signature**

```ts
export declare const isAlreadyFlat: <A>(a: Flatten<A>) => a is AlreadyFlat<A>
```
