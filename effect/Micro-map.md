# map

Transforms the success value of the `Micro` effect with the specified
function.

To import and use `map` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.map
```

**Signature**

```ts
export declare const map: {
  <A, B>(f: (a: A) => B): <E, R>(self: Micro<A, E, R>) => Micro<B, E, R>
  <A, E, R, B>(self: Micro<A, E, R>, f: (a: A) => B): Micro<B, E, R>
}
```
