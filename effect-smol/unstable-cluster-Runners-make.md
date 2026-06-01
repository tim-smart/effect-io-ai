Package: `effect`<br />
Module: `Runners`<br />

## Runners.make

Builds the `Runners` service from remote runner callbacks and adds local
message persistence, duplicate request handling, optional local serialization
simulation, and polling for persisted replies.

**When to use**

Use when you need a custom `Runners` service around remote `ping`, `send`,
`notify`, and `onRunnerUnavailable` callbacks, with standard local
persistence and reply recovery behavior.

**Details**

`make` uses the supplied remote callbacks for runner communication and
derives `sendLocal` and `notifyLocal`. Local sends can optionally simulate
remote serialization, persisted notifications are saved through
`MessageStorage`, duplicate requests are resumed from stored replies when
possible, and pending replies are polled according to
`ShardingConfig.entityReplyPollInterval`.

**Gotchas**

`notify` and `notifyLocal` only support RPCs annotated as persisted; calling
either path with a non-persisted message dies instead of returning a typed
error.

**See**

- `makeRpc` for the RPC-backed implementation built on top of this constructor
- `makeNoop` for a no-op implementation when remote runner communication is not needed

**Signature**

```ts
declare const make: (options: Omit<Runners["Service"], "sendLocal" | "notifyLocal">) => Effect.Effect<Runners["Service"], never, MessageStorage.MessageStorage | Snowflake.Generator | ShardingConfig | Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Runners.ts#L180)

Since v4.0.0