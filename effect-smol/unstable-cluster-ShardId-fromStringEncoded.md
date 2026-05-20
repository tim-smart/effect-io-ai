Package: `effect`<br />
Module: `ShardId`<br />

## ShardId.fromStringEncoded

Parses a `group:id` string into plain shard id parts.

**Details**

Throws an `Error` when the string has no colon separator or the id segment is
not numeric.

**Signature**

```ts
declare const fromStringEncoded: (s: string) => { readonly group: string; readonly id: number; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ShardId.ts#L143)

Since v4.0.0