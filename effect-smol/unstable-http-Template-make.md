Package: `effect`<br />
Module: `Template`<br />

## Template.make

Creates an effectful string from a template literal.

**Details**

Primitive and `Option` interpolations are rendered immediately. Effect
interpolations are evaluated and rendered before the final string is produced.

**Signature**

```ts
declare const make: <A extends ReadonlyArray<Interpolated>>(strings: TemplateStringsArray, ...args: A) => Effect.Effect<string, Interpolated.Error<A[number]>, Interpolated.Context<A[number]>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Template.ts#L124)

Since v4.0.0