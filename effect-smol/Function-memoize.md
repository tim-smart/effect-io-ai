Package: `effect`<br />
Module: `Function`<br />

## Function.memoize

Memoizes a function whose input is an object, caching results by object
identity.

**Signature**

```ts
declare const memoize: <A extends object, O>(f: (a: A) => O) => (ast: A) => O
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L1316)

Since v4.0.0