Package: `effect`<br />
Module: `String`<br />

## String.concat

Concatenates two strings at runtime.

**Signature**

```ts
declare const concat: { <B extends string>(that: B): <A extends string>(self: A) => Concat<A, B>; <A extends string, B extends string>(self: A, that: B): Concat<A, B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/String.ts#L68)

Since v2.0.0