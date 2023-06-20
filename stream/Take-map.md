# map

Transforms `Take<E, A>` to `Take<E, B>` by applying function `f`.

To import and use `map` from the "Take" module:

```ts
import * as Take from '@effect/stream/Take'

// Can be accessed like this
Take.map
```

**Signature**

```ts
export declare const map: {
  <A, B>(f: (a: A) => B): <E>(self: Take<E, A>) => Take<E, B>
  <E, A, B>(self: Take<E, A>, f: (a: A) => B): Take<E, B>
}
```
