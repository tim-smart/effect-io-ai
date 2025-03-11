## auto

Makes a new reloadable service from a layer that describes the construction
of a static service. The service is automatically reloaded according to the
provided schedule.

**Signature**

```ts
declare const auto: <I, S, E, In, R>(tag: Context.Tag<I, S>, options: { readonly layer: Layer.Layer<I, E, In>; readonly schedule: Schedule.Schedule<unknown, unknown, R>; }) => Layer.Layer<Reloadable<I>, E, R | In>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Reloadable.ts#L65)

Since v2.0.0