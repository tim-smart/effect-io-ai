Package: `effect`<br />
Module: `DurableDeferred`<br />

## DurableDeferred.raceAll

Runs effects as a durable race, returning a previously persisted result when
present or completing a named deferred with the first result.

**Signature**

```ts
declare const raceAll: <const Effects extends NonEmptyReadonlyArray<Effect.Effect<any, any, any>>, Success extends Schema.Schema<Effect.Success<Effects[number]>>, Error extends Schema.Schema<Effect.Error<Effects[number]>>>(options: { name: string; success: Success; error: Error; effects: Effects; }) => Effect.Effect<Effect.Success<Effects[number]>, Effect.Error<Effects[number]>, Effect.Services<Effects[number]> | Success["DecodingServices"] | Success["EncodingServices"] | Error["DecodingServices"] | Error["EncodingServices"] | WorkflowEngine | WorkflowInstance>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DurableDeferred.ts#L264)

Since v4.0.0