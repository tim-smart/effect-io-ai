# map

Transforms `Take<A, E>` to `Take<B, A>` by applying function `f`.

To import and use `map` from the "Take" module:

```ts
import * as Take from "effect/Take"
// Can be accessed like this
Take.map
```

**Signature**

```ts
export declare const map: {
  <A, B>(f: (a: A) => B): <E>(self: Take<A, E>) => Take<B, E>
  <A, E, B>(self: Take<A, E>, f: (a: A) => B): Take<B, E>
}
```
