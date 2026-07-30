Package: `effect`<br />
Module: `STM`<br />

## STM.asSome

Maps the success value of this effect to an optional value.

**Signature**

```ts
declare const asSome: <A, E, R>(self: STM<A, E, R>) => STM<Option.Option<A>, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L275)

Since v2.0.0