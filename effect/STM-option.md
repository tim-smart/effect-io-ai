Package: `effect`<br />
Module: `STM`<br />

## STM.option

Converts the failure channel into an `Option`.

**Signature**

```ts
declare const option: <A, E, R>(self: STM<A, E, R>) => STM<Option.Option<A>, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1324)

Since v2.0.0