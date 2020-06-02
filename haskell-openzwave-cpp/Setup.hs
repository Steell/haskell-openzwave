module Main (main) where

import Foreign.Hoppy.Setup (ProjectConfig (..), cppMain)

main =
  cppMain $
  ProjectConfig
  { generatorExecutableName = "haskell-openzwave-gen"
  , cppPackageName = "haskell-openzwave-cpp"
  , cppSourcesDir = "cpp"
  , hsSourcesDir = "src"
  , interfaceName = Nothing
  }
