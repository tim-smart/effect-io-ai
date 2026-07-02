Package: `effect`<br />
Module: `Schema`<br />

## Schema.StandardSchemaV1FailureResult

Schema for a Standard Schema v1 failure result.

**Details**

The result contains an `issues` array where each issue has a message and an
optional path made of property keys or keyed path segments.

**Signature**

```ts
declare const StandardSchemaV1FailureResult: Struct<{ readonly issues: $Array<Struct<{ readonly message: String; readonly path: optional<$Array<Union<readonly [Union<readonly [Finite, Symbol, String]>, Struct<{ readonly key: Union<readonly [Finite, Symbol, String]>; }>]>>>; }>>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11707)

Since v4.0.0