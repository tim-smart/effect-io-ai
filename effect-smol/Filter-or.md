Package: `effect`<br />
Module: `Filter`<br />

## Filter.or

Combines two filters with logical OR semantics.

**Signature**

```ts
declare const or: { <Input2, Pass2, Fail2>(that: Filter<Input2, Pass2, Fail2>): <Input1, Pass2, Fail2>(self: Filter<Input1, Pass2>) => Filter<Input1 & Input2, Pass2 | Pass2, Fail2>; <Input1, Pass1, Fail1, Input2, Pass2, Fail2>(self: Filter<Input1, Pass1, Fail1>, that: Filter<Input2, Pass2, Fail2>): Filter<Input1 & Input2, Pass1 | Pass2, Fail2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L385)

Since v4.0.0