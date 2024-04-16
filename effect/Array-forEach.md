# forEach

Iterate over the `Iterable` applying `f`.

To import and use `forEach` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.forEach
```

**Signature**

```ts
export declare const forEach: {
  <A>(f: (a: A, i: number) => void): (self: Iterable<A>) => void
  <A>(self: Iterable<A>, f: (a: A, i: number) => void): void
}
```
