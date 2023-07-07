# loop

Loops with the specified effectual function, collecting the results into a
list. The moral equivalent of:

```ts
let s = initial
let as = [] as readonly A[]

while (cont(s)) {
  as = [body(s), ...as]
  s = inc(s)
}

A.reverse(as)
```

To import and use `loop` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.loop
```

**Signature**

```ts
export declare const loop: {
  <Z, R, E, A>(
    initial: Z,
    options: {
      readonly while: (z: Z) => boolean
      readonly step: (z: Z) => Z
      readonly body: (z: Z) => Effect<R, E, A>
      readonly discard?: false | undefined
    }
  ): Effect<R, E, A[]>
  <Z, R, E, A>(
    initial: Z,
    options: {
      readonly while: (z: Z) => boolean
      readonly step: (z: Z) => Z
      readonly body: (z: Z) => Effect<R, E, A>
      readonly discard: true
    }
  ): Effect<R, E, void>
}
```
