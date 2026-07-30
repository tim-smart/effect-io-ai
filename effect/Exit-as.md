Package: `effect`<br />
Module: `Exit`<br />

## Exit.as

Maps the `Success` value of the specified exit to the provided constant
value.

**Signature**

```ts
declare const as: { <A2>(value: A2): <A, E>(self: Exit<A, E>) => Exit<A2, E>; <A, E, A2>(self: Exit<A, E>, value: A2): Exit<A2, E>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Exit.ts#L120)

Since v2.0.0