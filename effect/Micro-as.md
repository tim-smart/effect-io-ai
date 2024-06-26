# as

Create a `Micro` effect that will replace the success value of the given
effect.

To import and use `as` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.as
```

**Signature**

```ts
export declare const as: {
  <A, B>(value: B): <E, R>(self: Micro<A, E, R>) => Micro<B, E, R>
  <A, E, R, B>(self: Micro<A, E, R>, value: B): Micro<B, E, R>
}
```
