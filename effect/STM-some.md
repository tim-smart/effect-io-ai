Package: `effect`<br />
Module: `STM`<br />

## STM.some

Converts an option on values into an option on errors.

**Signature**

```ts
declare const some: <A, E, R>(self: STM<Option.Option<A>, E, R>) => STM<A, Option.Option<E>, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1706)

Since v2.0.0