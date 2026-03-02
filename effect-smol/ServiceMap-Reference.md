Package: `effect`<br />
Module: `ServiceMap`<br />

## ServiceMap.Reference

Creates a service map key with a default value.

**Details**

`ServiceMap.Reference` allows you to create a key that can hold a value. You
can provide a default value for the service, which will automatically be used
when the context is accessed, or override it with a custom implementation
when needed.

**Example**

```ts
import { ServiceMap } from "effect"

// Create a reference with a default value
const LoggerRef = ServiceMap.Reference("Logger", {
  defaultValue: () => ({ log: (msg: string) => console.log(msg) })
})

// The reference provides the default value when accessed from an empty context
const services = ServiceMap.empty()
const logger = ServiceMap.get(services, LoggerRef)

// You can also override the default value
const customServices = ServiceMap.make(LoggerRef, {
  log: (msg: string) => `Custom: ${msg}`
})
const customLogger = ServiceMap.get(customServices, LoggerRef)
```

**Signature**

```ts
declare const Reference: <Service>(key: string, options: { readonly defaultValue: () => Service; }) => Reference<Service>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ServiceMap.ts#L1007)

Since v4.0.0