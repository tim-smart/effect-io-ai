# loop

Loops with the specified transactional function, collecting the results
into a list. The moral equivalent of:

```ts
const as = []
let s = initial

while (cont(s)) {
  as.push(body(s))
  s = inc(s)
}

return as
```

To import and use `loop` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.loop
```

**Signature**

```ts
export declare const loop: {
  <Z, R, E, A>(
    initial: Z,
    options: {
      readonly while: (z: Z) => boolean
      readonly step: (z: Z) => Z
      readonly body: (z: Z) => STM<R, E, A>
      readonly discard?: false | undefined
    }
  ): STM<R, E, A[]>
  <Z, R, E, A>(
    initial: Z,
    options: {
      readonly while: (z: Z) => boolean
      readonly step: (z: Z) => Z
      readonly body: (z: Z) => STM<R, E, A>
      readonly discard: true
    }
  ): STM<R, E, void>
}
```
