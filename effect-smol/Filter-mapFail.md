Package: `effect`<br />
Module: `Filter`<br />

## Filter.mapFail

Transforms the failure value produced by a `Filter`, leaving successful
results unchanged.

**Signature**

```ts
declare const mapFail: { <Fail, Fail2>(f: (fail: Fail) => Fail2): <Input, Pass>(self: Filter<Input, Pass, Fail>) => Filter<Input, Pass, Fail2>; <Input, Pass, Fail, Fail2>(self: Filter<Input, Pass, Fail>, f: (fail: Fail) => Fail2): Filter<Input, Pass, Fail2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L178)

Since v4.0.0