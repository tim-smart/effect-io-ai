## autoFromConfig

Makes a new reloadable service from a layer that describes the construction
of a static service. The service is automatically reloaded according to a
schedule, which is extracted from the input to the layer.

**Signature**

```ts
declare const autoFromConfig: <I, S, E, In, R>(tag: Context.Tag<I, S>, options: { readonly layer: Layer.Layer<I, E, In>; readonly scheduleFromConfig: (context: Context.Context<In>) => Schedule.Schedule<unknown, unknown, R>; }) => Layer.Layer<Reloadable<I>, E, R | In>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Reloadable.ts#L78)

Since v2.0.0