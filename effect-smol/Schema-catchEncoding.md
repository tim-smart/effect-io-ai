Package: `effect`<br />
Module: `Schema`<br />

## Schema.catchEncoding

Recovers from an encoding error by providing a fallback value.

The handler receives the `Issue` and returns an `Effect` that either
succeeds with a fallback value or re-fails with a (possibly different) issue.

**See**

- `catchEncodingWithContext` to add service requirements to the handler

**Signature**

```ts
declare const catchEncoding: <S extends Top>(f: (issue: Issue.Issue) => Effect.Effect<Option_.Option<S["Encoded"]>, Issue.Issue>) => (self: S) => S["~rebuild.out"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3966)

Since v4.0.0