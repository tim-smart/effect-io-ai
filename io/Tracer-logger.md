# logger

A Logger which adds log entries as events to the current span.

To import and use `logger` from the "Tracer" module:

```ts
import * as Tracer from '@effect/io/Tracer'

// Can be accessed like this
Tracer.logger
```

**Signature**

```ts
export declare const logger: Logger.Logger<string, void>
```
