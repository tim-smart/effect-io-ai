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

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.loop
undefined

**Signature**

```ts
export declare const loop: {
  <Z, A, E, R>(
    initial: Z,
    options: {
      readonly while: (z: Z) => boolean
      readonly step: (z: Z) => Z
      readonly body: (z: Z) => STM<A, E, R>
      readonly discard?: false | undefined
    }
  ): STM<Array<A>, E, R>
  <Z, A, E, R>(
    initial: Z,
    options: {
      readonly while: (z: Z) => boolean
      readonly step: (z: Z) => Z
      readonly body: (z: Z) => STM<A, E, R>
      readonly discard: true
    }
  ): STM<void, E, R>
}
```
