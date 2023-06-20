# loopDiscard

Loops with the specified effectual function purely for its effects. The
moral equivalent of:

```ts
let s = initial

while (cont(s)) {
  body(s)
  s = inc(s)
}
```

To import and use `loopDiscard` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.loopDiscard
```

**Signature**

```ts
export declare const loopDiscard: <Z, R, E, X>(
  initial: Z,
  cont: (z: Z) => boolean,
  inc: (z: Z) => Z,
  body: (z: Z) => Effect<R, E, X>
) => Effect<R, E, void>
```
