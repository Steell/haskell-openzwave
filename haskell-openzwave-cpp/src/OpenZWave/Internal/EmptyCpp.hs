-- | This module exists so that this package has a module in its library.
-- Otherwise, GHC won't register a library directory for the package, and we
-- need it to so that we can install our custom-built shared library there.
module OpenZWave.Internal.EmptyCpp () where
