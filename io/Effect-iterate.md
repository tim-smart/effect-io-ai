# iterate

Iterates with the specified effectual function. The moral equivalent of:

```ts
let s = initial

while (cont(s)) {
  s = body(s)
}

return s
```

To import and use `iterate` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.iterate
```

**Signature**

```ts
export declare const iterate: <Z, R, E>(
  initial: Z,
  cont: (z: Z) => boolean,
  body: (z: Z) => Effect<R, E, Z>
) => Effect<R, E, Z>
```
