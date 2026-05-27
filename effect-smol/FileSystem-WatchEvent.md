Package: `effect`<br />
Module: `FileSystem`<br />

## FileSystem.WatchEvent

Represents file system events emitted when watching files or directories.

**When to use**

Use when consuming file system watch streams and pattern matching on `_tag`
to handle created, updated, or removed paths.

**Details**

The union covers create, update, and remove events. Each event carries the
reported `path`.

**See**

- `FileSystem` for the service interface whose `watch` operation emits these events

**Signature**

```ts
type WatchEvent = WatchEvent.Create | WatchEvent.Update | WatchEvent.Remove
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FileSystem.ts#L1334)

Since v4.0.0