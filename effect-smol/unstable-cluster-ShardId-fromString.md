Package: `effect`<br />
Module: `ShardId`<br />

## ShardId.fromString

Parses a `group:id` string into a cached `ShardId`.

Throws an `Error` when the string has no colon separator or the id segment is
not numeric.

**Signature**

```ts
declare const fromString: (s: string) => ShardId
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ShardId.ts#L166)

Since v4.0.0