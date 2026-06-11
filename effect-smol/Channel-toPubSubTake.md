Package: `effect`<br />
Module: `Channel`<br />

## Channel.toPubSubTake

Converts a channel to a scoped `PubSub` of `Take` values.

**Details**

Emitted non-empty arrays are published as output `Take` values. When the
channel ends, its final `Exit` is published so subscribers can observe
completion or failure.

**Signature**

```ts
declare const toPubSubTake: { (options: { readonly capacity: "unbounded"; readonly replay?: number | undefined; } | { readonly capacity: number; readonly strategy?: "dropping" | "sliding" | "suspend" | undefined; readonly replay?: number | undefined; }): <OutElem, OutErr, OutDone, Env>(self: Channel<Arr.NonEmptyReadonlyArray<OutDone>, OutErr, OutDone, unknown, unknown, unknown, Env>) => Effect.Effect<PubSub.PubSub<Take.Take<OutElem, OutErr, OutDone>>, never, Env | Scope.Scope>; <OutElem, OutErr, OutDone, Env>(self: Channel<Arr.NonEmptyReadonlyArray<OutElem>, OutErr, OutDone, unknown, unknown, unknown, Env>, options: { readonly capacity: "unbounded"; readonly replay?: number | undefined; } | { readonly capacity: number; readonly strategy?: "dropping" | "sliding" | "suspend" | undefined; readonly replay?: number | undefined; }): Effect.Effect<PubSub.PubSub<Take.Take<OutElem, OutErr, OutDone>>, never, Env | Scope.Scope>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L8563)

Since v4.0.0