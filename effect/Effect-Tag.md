Package: `effect`<br />
Module: `Effect`<br />

## Effect.Tag

Creates a unique tag for a dependency, embedding the service's methods as
static properties.

**Details**

This function allows you to define a `Tag` for a service or dependency in
your application. The `Tag` not only acts as an identifier but also provides
direct access to the service's methods via static properties. This makes it
easier to access and use the service in your code without manually managing
contexts.

In the example below, the fields of the service (in this case, the `notify`
method) are turned into static properties of the Notifications class, making
it easier to access them.

**Example**

```ts
import { Effect } from "effect"

class Notifications extends Effect.Tag("Notifications")<
  Notifications,
  { readonly notify: (message: string) => Effect.Effect<void> }
>() {}

// Create an effect that depends on the Notifications service
const action = Notifications.notify("Hello, world!")
```

**Signature**

```ts
declare const Tag: <const Id extends string>(id: Id) => <Self, Type extends Tag.AllowedType>() => Context.TagClass<Self, Id, Type> & (Type extends Record<PropertyKey, any> ? Tag.Proxy<Self, Type> : {}) & { use: <X>(body: (_: Type) => X) => [X] extends [Effect<infer A, infer E, infer R>] ? Effect<A, E, R | Self> : [X] extends [PromiseLike<infer A>] ? Effect<A, Cause.UnknownException, Self> : Effect<X, never, Self>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L13460)

Since v2.0.0