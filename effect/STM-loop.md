## loop

Loops with the specified transactional function, collecting the results
into a list. The moral equivalent of:

```ts
const as = []
let s  = initial

while (cont(s)) {
  as.push(body(s))
  s  = inc(s)
}

return as
```

**Signature**

```ts
declare const loop: { <Z, A, E, R>(initial: Z, options: { readonly while: (z: Z) => boolean; readonly step: (z: Z) => Z; readonly body: (z: Z) => STM<A, E, R>; readonly discard?: false | undefined; }): STM<Array<A>, E, R>; <Z, A, E, R>(initial: Z, options: { readonly while: (z: Z) => boolean; readonly step: (z: Z) => Z; readonly body: (z: Z) => STM<A, E, R>; readonly discard: true; }): STM<void, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1209)

Since v2.0.0