## fromOption

Lifts an `Option` into a `STM`.

**Signature**

```ts
declare const fromOption: <A>(option: Option.Option<A>) => STM<A, Option.Option<never>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L801)

Since v2.0.0