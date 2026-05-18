Package: `effect`<br />
Module: `Singleton`<br />

## Singleton.make

Creates a layer that registers a singleton effect with `Sharding` under the
specified name and optional shard group.

**Signature**

```ts
declare const make: <E, R>(name: string, run: Effect.Effect<void, E, R>, options?: { readonly shardGroup?: string | undefined; }) => Layer.Layer<never, never, Sharding | Exclude<R, Scope>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Singleton.ts#L27)

Since v4.0.0