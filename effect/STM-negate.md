Package: `effect`<br />
Module: `STM`<br />

## STM.negate

Returns a new effect where boolean value of this effect is negated.

**Signature**

```ts
declare const negate: <E, R>(self: STM<boolean, E, R>) => STM<boolean, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1308)

Since v2.0.0