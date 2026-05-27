Package: `effect`<br />
Module: `RunnerAddress`<br />

## RunnerAddress.make

Constructs a `RunnerAddress` from a host and port.

**When to use**

Use to create the stable network identity for a cluster runner when
configuring sharding, registering runner metadata, or targeting a runner by
host and port.

**Details**

The returned `RunnerAddress` stores the supplied `host` and `port`. Equality,
hashing, and the primary key use both fields, with the primary key formatted
as `host:port`.

**Gotchas**

`make` does not normalize the host. Pass the host string exactly as the
cluster routing and storage layers should identify it.

**See**

- `RunnerAddress` for the constructed address type and its equality, hashing, primary-key, and formatting behavior

**Signature**

```ts
declare const make: (host: string, port: number) => RunnerAddress
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RunnerAddress.ts#L133)

Since v4.0.0