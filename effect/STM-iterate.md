## iterate

Iterates with the specified transactional function. The moral equivalent
of:

```ts
const s = initial

while (cont(s)) {
  s = body(s)
}

return s
```

**Signature**

```ts
declare const iterate: <Z, E, R>(initial: Z, options: { readonly while: Predicate<Z>; readonly body: (z: Z) => STM<Z, E, R>; }) => STM<Z, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1182)

Since v2.0.0