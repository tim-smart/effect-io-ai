Package: `effect`<br />
Module: `Exit`<br />

## Exit.map

Maps over the `Success` value of the specified exit using the provided
function.

**Signature**

```ts
declare const map: { <A, B>(f: (a: A) => B): <E>(self: Exit<A, E>) => Exit<B, E>; <A, E, B>(self: Exit<A, E>, f: (a: A) => B): Exit<B, E>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Exit.ts#L273)

Since v2.0.0