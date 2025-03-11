## Service

Simplifies the creation and management of services in Effect by defining both
a `Tag` and a `Layer`.

**Details**

This function allows you to streamline the creation of services by combining
the definition of a `Context.Tag` and a `Layer` in a single step. It supports
various ways of providing the service implementation:
- Using an `effect` to define the service dynamically.
- Using `sync` or `succeed` to define the service statically.
- Using `scoped` to create services with lifecycle management.

It also allows you to specify dependencies for the service, which will be
provided automatically when the service is used. Accessors can be optionally
generated for the service, making it more convenient to use.

**Example**

```ts
import { Effect } from 'effect';

class Prefix extends Effect.Service<Prefix>()("Prefix", {
 sync: () => ({ prefix: "PRE" })
}) {}

class Logger extends Effect.Service<Logger>()("Logger", {
 accessors: true,
 effect: Effect.gen(function* () {
   const { prefix } = yield* Prefix
   return {
     info: (message: string) =>
       Effect.sync(() => {
         console.log(`[${prefix}][${message}]`)
       })
   }
 }),
 dependencies: [Prefix.Default]
}) {}
```

**Signature**

```ts
declare const Service: <Self = never>() => [Self] extends [never] ? MissingSelfGeneric : { <const Key extends string, const Make extends { readonly scoped: Effect<Service.AllowedType<Key, Make>, any, any>; readonly dependencies?: ReadonlyArray<Layer.Layer.Any>; readonly accessors?: boolean; readonly ಠ_ಠ: never; } | { readonly effect: Effect<Service.AllowedType<Key, Make>, any, any>; readonly dependencies?: ReadonlyArray<Layer.Layer.Any>; readonly accessors?: boolean; readonly ಠ_ಠ: never; } | { readonly sync: LazyArg<Service.AllowedType<Key, Make>>; readonly dependencies?: ReadonlyArray<Layer.Layer.Any>; readonly accessors?: boolean; readonly ಠ_ಠ: never; } | { readonly succeed: Service.AllowedType<Key, Make>; readonly dependencies?: ReadonlyArray<Layer.Layer.Any>; readonly accessors?: boolean; readonly ಠ_ಠ: never; }>(key: Key, make: Make): Service.Class<Self, Key, Make>; <const Key extends string, const Make extends NoExcessProperties<{ readonly scoped: Effect<Service.AllowedType<Key, Make>, any, any>; readonly dependencies?: ReadonlyArray<Layer.Layer.Any>; readonly accessors?: boolean; }, Make>>(key: Key, make: Make): Service.Class<Self, Key, Make>; <const Key extends string, const Make extends NoExcessProperties<{ readonly effect: Effect<Service.AllowedType<Key, Make>, any, any>; readonly dependencies?: ReadonlyArray<Layer.Layer.Any>; readonly accessors?: boolean; }, Make>>(key: Key, make: Make): Service.Class<Self, Key, Make>; <const Key extends string, const Make extends NoExcessProperties<{ readonly sync: LazyArg<Service.AllowedType<Key, Make>>; readonly dependencies?: ReadonlyArray<Layer.Layer.Any>; readonly accessors?: boolean; }, Make>>(key: Key, make: Make): Service.Class<Self, Key, Make>; <const Key extends string, const Make extends NoExcessProperties<{ readonly succeed: Service.AllowedType<Key, Make>; readonly dependencies?: ReadonlyArray<Layer.Layer.Any>; readonly accessors?: boolean; }, Make>>(key: Key, make: Make): Service.Class<Self, Key, Make>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L13247)

Since v3.9.0