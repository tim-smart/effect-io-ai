Package: `effect`<br />
Module: `MessageStorage`<br />

## MessageStorage.EncodedUnprocessedOptions

Cursor options for reading encoded unprocessed messages across shard sets.

The fields distinguish existing shards from newly assigned shards and carry the
driver-specific pagination cursor.

**Signature**

```ts
type EncodedUnprocessedOptions<A> = {
  readonly existingShards: Array<number>
  readonly newShards: Array<number>
  readonly cursor: Option.Option<A>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MessageStorage.ts#L409)

Since v4.0.0