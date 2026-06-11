Package: `effect`<br />
Module: `Schema`<br />

## Schema.catchEncoding

Recovers from an encoding error by providing a fallback value.

**Details**

The handler receives the `Issue` and returns an `Effect` that either
succeeds with a fallback value or re-fails with a (possibly different) issue.

**See**

- `catchEncodingWithContext` to add service requirements to the handler

**Signature**

```ts
declare const catchEncoding: <S extends Top>(f: (issue: SchemaIssue.Issue) => Effect.Effect<Option_.Option<S["Encoded"]>, SchemaIssue.Issue>) => (self: S) => S["Rebuild"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4895)

Since v4.0.0