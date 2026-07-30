Package: `@effect/cli`<br />
Module: `Primitive`<br />

## Primitive.validate

Validates that the specified value, if any, matches the specified primitive
type.

**Signature**

```ts
declare const validate: { (value: Option<string>, config: CliConfig): <A>(self: Primitive<A>) => Effect<A, string, FileSystem>; <A>(self: Primitive<A>, value: Option<string>, config: CliConfig): Effect<A, string, FileSystem>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cli/src/Primitive.ts#L161)

Since v1.0.0