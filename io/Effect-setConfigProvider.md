# setConfigProvider

Sets the current `ConfigProvider`.

To import and use `setConfigProvider` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.setConfigProvider
```

**Signature**

```ts
export declare const setConfigProvider: (configProvider: ConfigProvider) => Layer.Layer<never, never, never>
```
