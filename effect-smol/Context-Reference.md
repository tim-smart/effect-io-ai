Package: `effect`<br />
Module: `Context`<br />

## Context.Reference

Creates a context key with a default value.

**Details**

`Context.Reference` allows you to create a key that can hold a value. You
can provide a default value for the service, which will automatically be used
when the context is accessed, or override it with a custom implementation
when needed.

**Example**

```ts
import { Context } from "effect"

// Create a reference with a default value
const LoggerRef = Context.Reference("Logger", {
  defaultValue: () => ({ log: (msg: string) => console.log(msg) })
})

// The reference provides the default value when accessed from an empty context
const context = Context.empty()
const logger = Context.get(context, LoggerRef)

// You can also override the default value
const customContext = Context.make(LoggerRef, {
  log: (msg: string) => `Custom: ${msg}`
})
const customLogger = Context.get(customContext, LoggerRef)
```

**Signature**

```ts
declare const Reference: <Service>(key: string, options: { readonly defaultValue: () => Service; }) => Reference<Service>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L1022)

Since v4.0.0