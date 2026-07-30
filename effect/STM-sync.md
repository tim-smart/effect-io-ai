Package: `effect`<br />
Module: `STM`<br />

## STM.sync

Returns an `STM` effect that succeeds with the specified lazily evaluated
value.

**Signature**

```ts
declare const sync: <A>(evaluate: () => A) => STM<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1767)

Since v2.0.0