Package: `effect`<br />
Module: `ClusterSchema`<br />

## ClusterSchema.WithTransaction

Annotation that marks whether request handling should be wrapped in the
configured message storage transaction.

**When to use**

Use when you need server-side request handling or storage work wrapped in the
storage transaction.

**Details**

The default value is `false`. When `true`, entity handling wraps server
writes with the configured storage transaction.

**Gotchas**

This annotation has transactional behavior only when the configured
`MessageStorage` implements it.

**Signature**

```ts
declare const WithTransaction: Context.Reference<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ClusterSchema.ts#L90)

Since v4.0.0