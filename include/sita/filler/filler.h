//
// Created by unsky on 02/07/18.
//

#ifndef SITA_FILLER_FILLER_H
#define SITA_FILLER_FILLER_H
#include <vector>
#include <glog/logging.h>
#include <string>
#include "sita/macros.h"
#include <google/protobuf/io/coded_stream.h>
#include <google/protobuf/io/zero_copy_stream_impl.h>
#include <google/protobuf/text_format.h>
#include "sita/proto/sita.h"
#include "sita/io_protobuff.h"
namespace sita{

class Filler{
public:
    Filler(std::string model_file);
    ~Filler(){};
    void graph_symbol_show();
    GraphParameter * graph_sym(){
        return &_graph;}

private:
    GraphParameter _graph;

};

}//namespace


#endif //SITA_STUFF_GRAPH_H
