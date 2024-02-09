# iterate

Iterates with the specified transactional function. The moral equivalent
of:

```ts
const s = initial

while (cont(s)) {
  s = body(s)
}

return s
```

To import and use `iterate` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.iterate
```

**Signature**

```ts
export declare const iterate: <R, E, Z>(
  initial: Z,
  options: { readonly while: Predicate<Z>; readonly body: (z: Z) => STM<Z, E, R> }
) => STM<Z, E, R>
```
